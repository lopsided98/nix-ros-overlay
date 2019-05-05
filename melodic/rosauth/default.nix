
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, openssl, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosauth";
  version = "0.1.7-r2";

  src = fetchurl {
    url = https://github.com/gt-rail-release/rosauth-release/archive/release/melodic/rosauth/0.1.7-2.tar.gz;
    sha256 = "9d3f956efc11d59d7fb973249d34a497dfe1649d77dffe76da6cc29a485a6c31";
  };

  buildInputs = [ openssl rostest message-generation roscpp ];
  propagatedBuildInputs = [ roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
