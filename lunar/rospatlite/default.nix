
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-rospatlite";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/rospatlite/2.1.11-2.tar.gz;
    sha256 = "364f1d89aa78f9e33f3879324cdad79cec5d3d5ce54a314bfd37ba21a30c8686";
  };

  buildInputs = [ std-msgs rospy ];
  propagatedBuildInputs = [ std-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    #license = lib.licenses.BSD;
  };
}
