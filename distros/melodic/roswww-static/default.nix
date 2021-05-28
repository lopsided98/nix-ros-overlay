
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-roswww-static";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/roswww_static/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "2420681ba2278f0aeb622e54220d0add26cf00b0d9d8606dbad1d698e11fe058";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Static web pages for ROS packages'';
    license = with lib.licenses; [ mit ];
  };
}
