
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, marshmallow, pythonPackages, webtest }:
buildRosPackage {
  pname = "ros-kinetic-webargs";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/asmodehn/webargs-rosrelease/archive/release/kinetic/webargs/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "d452af802ac66a0791c25c678d45386ffc72c91ee70db7ee44ec6dae0768fbbd";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  checkInputs = [ pythonPackages.flask pythonPackages.mock pythonPackages.pytest pythonPackages.tornado pythonPackages.werkzeug webtest ];
  propagatedBuildInputs = [ marshmallow ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A friendly library for parsing HTTP request arguments, with built-in support for popular web frameworks, including Flask, Django, Bottle, Tornado, Pyramid, webapp2, Falcon, and aiohttp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
