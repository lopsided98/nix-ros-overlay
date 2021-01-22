
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-tf2-bullet";
  version = "0.5.20";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_bullet/0.5.20-0.tar.gz";
    name = "0.5.20-0.tar.gz";
    sha256 = "cd0c6f91de315517ed80291ad0d4a694ad5ae47e1bb6c12253c071550c52c69b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bullet geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''tf2_bullet'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
