
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-lunar-gencpp";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/gencpp-release/archive/release/lunar/gencpp/0.6.0-0.tar.gz;
    sha256 = "60687e588984c89d38d8459306078d381d3e5a32ef90956e1c4a861c0a07a487";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
