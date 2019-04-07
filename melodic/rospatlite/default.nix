
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-rospatlite";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rospatlite/2.1.11-0.tar.gz;
    sha256 = "f7b0c2e8fb05096688e5c52f1aa6cf20a77025a48a374f8d05ad11a31dd8802b";
  };

  buildInputs = [ std-msgs rospy ];
  propagatedBuildInputs = [ std-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    #license = lib.licenses.BSD;
  };
}
