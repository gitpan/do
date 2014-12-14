requires "Data::Object" => "0.06";
requires "Data::Object::Autobox" => "0.04";
requires "Import::Into" => "1.002004";
requires "perl" => "v5.10.0";

on 'test' => sub {
  requires "perl" => "v5.10.0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};
