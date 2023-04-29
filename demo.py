import random 

questions = ["what is this?" , "what is that?"]

html_content = []

for q in questions:
        response = random.randint(1,10)
        
        html_content.append(f'<h2><span style="text-decoration: underline; color: #ff0000;"><strong>{q}</strong></h2>')
        html_content.append(f'<p>Dummy response is: {response}</p><br>')
    
html_content="<div>"+("".join(html_content))+"</div>"

print(html_content)
