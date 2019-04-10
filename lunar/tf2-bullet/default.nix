
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, pkg-config, tf2, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-bullet";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_bullet/0.5.20-0.tar.gz;
    sha256 = "8c2570aad640ddf29761d201aba81a144a97e5313beefb0d6bda97402ffa292a";
  };

  buildInputs = [ tf2 bullet geometry-msgs ];
  propagatedBuildInputs = [ tf2 bullet geometry-msgs ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''tf2_bullet'';
    #license = lib.licenses.BSD;
  };
}
