const request = require('supertest');
const app = require('../src/index');

describe('MAY17 Node.js API Tests', () => {

  describe('GET /', () => {
    it('should return welcome message with status 200', async () => {
      const res = await request(app).get('/');
      expect(res.statusCode).toBe(200);
      expect(res.body).toHaveProperty('message');
      expect(res.body.message).toContain('MAY17');
      expect(res.body).toHaveProperty('version');
      expect(res.body).toHaveProperty('author', 'Tarun2299');
    });
  });

  describe('GET /health', () => {
    it('should return health status OK', async () => {
      const res = await request(app).get('/health');
      expect(res.statusCode).toBe(200);
      expect(res.body.status).toBe('OK');
      expect(res.body).toHaveProperty('uptime');
      expect(res.body).toHaveProperty('timestamp');
    });
  });

  describe('GET /api/hello', () => {
    it('should return hello world by default', async () => {
      const res = await request(app).get('/api/hello');
      expect(res.statusCode).toBe(200);
      expect(res.body.message).toContain('Hello, World!');
    });

    it('should return hello with custom name', async () => {
      const res = await request(app).get('/api/hello?name=Tarun');
      expect(res.statusCode).toBe(200);
      expect(res.body.message).toContain('Hello, Tarun!');
    });
  });

  describe('GET /unknown-route', () => {
    it('should return 404 for unknown routes', async () => {
      const res = await request(app).get('/this-does-not-exist');
      expect(res.statusCode).toBe(404);
      expect(res.body).toHaveProperty('error', 'Route not found');
    });
  });

});
