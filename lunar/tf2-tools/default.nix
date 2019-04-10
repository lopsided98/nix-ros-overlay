
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lunar-tf2-tools";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_tools/0.5.20-0.tar.gz;
    sha256 = "6164276574a8be30f95a3afbc05aa97f1a587dca2ac206557be11f187ec51821";
  };

  buildInputs = [ tf2 tf2-msgs tf2-ros ];
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_tools'';
    #license = lib.licenses.BSD;
  };
}
