
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-extest";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/nakakura/extest-release/archive/release/melodic/extest/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "a202e4d5ded9ed92f2216397014a057b72eb2e86411305045deda791a00dec66";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hello World with rosrust'';
    license = with lib.licenses; [ mit ];
  };
}
