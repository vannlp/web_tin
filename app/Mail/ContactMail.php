<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

     public $title = "Mail liên hệ";
     public $name;
     public $email;
     public $content;
    public function __construct($name, $email, $content)
    {
        $this->name = $name;
        $this->email = $email;
        $this->content = $content;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('phanvan0322@gmail.com', 'Mail liên hệ')->subject("Mail liên hệ")
        ->view('mails.contact');
    }
}
