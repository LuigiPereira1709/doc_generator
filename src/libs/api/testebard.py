from bardapi import BardCookies

def bard_init(prompt):
    bard = BardCookies(token_from_browser=True)
    response =  bard.get_answer(prompt)
    return response

c = bard_init('''atue como um especialista em idiomas, irei lhe fornecer um prompt para voce fazer um translate, porem quero apenas que me retorne as respostas em um json que cotenha os campos "text_translate": {conteudo do texto traduzido} e "culture_explanation": {explanation of translation in the origin culture and language. max 5 lines }

{
 "TRANSLATE": {
  "text": "oi, tudo bem?",
  "origin_country": "BR",
  "destination_language": "EN",
  "culture_explanation": "explanation of translation in the origin culture and language. max 5 lines"
 }
}


devera me retornar somente os campos text traduzido e o culture explanation com o que foi pedido em formato json''')




if c is not None:
    print(c['content'])
else:
    print("Error: API call failed")