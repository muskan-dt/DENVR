import Head from 'next/head'

export default function Home() {
  return (
    <div style={styles.container}>
      <Head>
        <title>Module Theorem | Next.js</title>
        <meta name="description" content="Commutative algebra theorem implementation" />
      </Head>

      <main style={styles.main}>
        <h1 style={styles.title}>
          ⋂ Ass(M) = √Ann(M)
        </h1>

        <p style={styles.description}>
          Implementation of the commutative algebra theorem in Next.js
        </p>

        <div style={styles.grid}>
          <div style={styles.card}>
            <h3>Mathematical Statement</h3>
            <p>For Noetherian ring A and finitely generated module M:</p>
            <code style={styles.code}>
              ⋂_{p ∈ Ass(M)} p = √(Ann(M))
            </code>
          </div>

          <div style={styles.card}>
            <h3>Computational Methods</h3>
            <ul style={styles.list}>
              <li>Python with sympy</li>
              <li>SageMath integration</li>
              <li>WebAssembly modules</li>
              <li>REST API endpoints</li>
            </ul>
          </div>

          <div style={styles.card}>
            <h3>Business Applications</h3>
            <ul style={styles.list}>
              <li>Risk analysis systems</li>
              <li>Failure mode detection</li>
              <li>Resource optimization</li>
              <li>Portfolio management</li>
            </ul>
          </div>

          <div style={styles.card}>
            <h3>Implementation Status</h3>
            <p style={styles.status}>✓ Conceptual proof</p>
            <p style={styles.status}>✓ Multi-language code</p>
            <p style={styles.status}>✓ Web interfaces</p>
            <p style={styles.status}>◻ Full algebraic computation</p>
          </div>
        </div>
      </main>

      <footer style={styles.footer}>
        <p>Commutative Algebra Theorem Project | Next.js Implementation</p>
      </footer>
    </div>
  )
}

const styles = {
  container: {
    minHeight: '100vh',
    padding: '0 0.5rem',
    display: 'flex',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
  },
  main: {
    padding: '5rem 0',
    flex: 1,
    display: 'flex',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    maxWidth: '1200px',
  },
  title: {
    margin: 0,
    lineHeight: 1.15,
    fontSize: '3.5rem',
    textAlign: 'center',
    fontFamily: 'Cambria, serif',
  },
  description: {
    lineHeight: 1.5,
    fontSize: '1.5rem',
    textAlign: 'center',
    margin: '2rem 0',
  },
  grid: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    flexWrap: 'wrap',
    maxWidth: '1200px',
    marginTop: '3rem',
  },
  card: {
    margin: '1rem',
    padding: '1.5rem',
    textAlign: 'left',
    color: 'inherit',
    textDecoration: 'none',
    border: '1px solid #eaeaea',
    borderRadius: '10px',
    transition: 'color 0.15s ease, border-color 0.15s ease',
    width: '45%',
    minWidth: '300px',
  },
  code: {
    background: '#fafafa',
    borderRadius: '5px',
    padding: '0.75rem',
    fontSize: '1.1rem',
    fontFamily: 'Monaco, monospace',
    display: 'block',
    marginTop: '1rem',
  },
  list: {
    paddingLeft: '1.5rem',
  },
  status: {
    margin: '0.5rem 0',
  },
  footer: {
    width: '100%',
    height: '100px',
    borderTop: '1px solid #eaeaea',
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
  }
}
