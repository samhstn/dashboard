describe('Dashboard', () => {
  it('should have correct <title>', () => {
    cy.visit('/');
    cy.title().should('include', 'dashboard');
    cy.get('h1').should('contain', 'Welcome to Your Vue.js App');
  });
});
