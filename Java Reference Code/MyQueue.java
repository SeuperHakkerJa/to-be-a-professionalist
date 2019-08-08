public class MyQueue<T> {

  private static class QueueNode<T> {

    private T data;
    private QueueNode<T> next;

    public QueueNode( T data ){
      this.data = data;
    }
  }

  QueueNode<T> first;
  QueueNode<T> last;

  public void add( T item ) {
    QueueNode<T> t = new QueueNode<T>(item);
    if( last != null ){
      last.next = t;
    }
    last = t;
    if ( first == null ){
      first = last;
    }
  }

  public T remove() {
    if (first == null) return null;
    T data = first.data;
    first = first.next;
    if ( first == null ){
      last = null;
    }
    return data;
  }


  public T peek() {
    if (first == null) return null;
    return first.data;
  }

  public boolean isEmpty() {
    return first == null;
  }
}
