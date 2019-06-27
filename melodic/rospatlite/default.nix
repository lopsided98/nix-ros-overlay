
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-rospatlite";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rospatlite/2.1.12-2.tar.gz;
    sha256 = "3527e7681c4e78cc71e78827d13b2bda852c523250f3f85bf554d9e367d45a58";
  };

  buildInputs = [ std-msgs rospy ];
  propagatedBuildInputs = [ std-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
