
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-jderobot-assets";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/kinetic/jderobot_assets/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "418e7bacbad6e2dd551721f179fca7c61711ff539769b20c06d9875f063d2fcb";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
