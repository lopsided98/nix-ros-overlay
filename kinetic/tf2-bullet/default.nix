
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, pkg-config, tf2, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tf2-bullet";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_bullet/0.5.20-0.tar.gz;
    sha256 = "cd0c6f91de315517ed80291ad0d4a694ad5ae47e1bb6c12253c071550c52c69b";
  };

  propagatedBuildInputs = [ tf2 bullet geometry-msgs ];
  nativeBuildInputs = [ pkg-config tf2 bullet catkin geometry-msgs ];

  meta = {
    description = ''tf2_bullet'';
    #license = lib.licenses.BSD;
  };
}
