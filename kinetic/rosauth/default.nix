
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, catkin, openssl, roscpp, message-generation, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rosauth";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rosauth-release/archive/release/kinetic/rosauth/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "b77263b92aed05aef959a32cefc664967c7d1ac842a92d9ac84820126e41042f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation openssl rostest roscpp ];
  propagatedBuildInputs = [ message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
