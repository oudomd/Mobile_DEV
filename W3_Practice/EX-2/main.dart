void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Container(
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.blue[300],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue[600],
        ),
        child: Center(
          child: Text(
            'CADT STUDENTS',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 50,
            ),
          ),
        ),
      ),

    )
  )
  );
}
