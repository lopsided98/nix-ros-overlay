
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-drone-assets";
  version = "1.3.7-r3";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_assets/1.3.7-3.tar.gz";
    name = "1.3.7-3.tar.gz";
    sha256 = "ac97d1219300c698c4ee91347f65f3f452f21b40cf9e49cb95e088e440db62c0";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
