
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, emacs, catkin }:
buildRosPackage {
  pname = "ros-lunar-rosemacs";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/lunar/rosemacs/0.4.12-0.tar.gz;
    sha256 = "31706dccd75409f766d233911513624710d3945ba01dfff969dde9e41d260bff";
  };

  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools for those who live in Emacs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
