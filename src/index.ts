import express, { Request, Response } from "express";
import cors from 'cors';

const app = express();
app.get('/' , (req: Request, res: Response) => {
    res.sendStatus(200);
})
app.use(cors());

app.listen(3001, () => {
    console.log("A API está rodando!");
});
