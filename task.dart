void main(){
    List<String> result = uncommonFromSentences("this apple is sweet", "this apple is sour");
    print(result);
}


List<String> uncommonFromSentences(String s1, String s2) {

    List<String> s1List = s1.split(" ");
    List<String> s2List = s2.split(" ");

    var anotherList1 = [];
    var anotherList2 = [];

    for(String elem in s1List){
        anotherList1.add(elem);
    }

    for(String elem in s2List){
        anotherList2.add(elem);
    }

    List<String> list = [];


    List<String> newList1 = [];
    List<String> newList2 = [];

    List<String> removed = [];
    for(int i = 0; i < s1List.length; i++){
        String remove = s1List[i];
        s1List.removeAt(i);
        if(!removed.contains(remove) && !s1List.contains(remove)){
            newList1.add(remove);
        }
        i = i - 1;
        removed.add(remove);
    }



    List<String> removed2 = [];
    for(int i = 0; i < s2List.length; i++){
        String remove = s2List[i];
        s2List.removeAt(i);
        if(!removed2.contains(remove) && !s2List.contains(remove)){
            newList2.add(remove);
        }
        i = i - 1;
        removed2.add(remove);
    }


    for(String elem in newList1){
        if(!anotherList2.contains(elem)){
            list.add(elem);
        }
    }

    for(String elem in newList2){
        if(!anotherList1.contains(elem)){
            list.add(elem);
        }
    }



    return list;
}