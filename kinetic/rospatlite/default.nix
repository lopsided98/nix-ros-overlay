
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rospatlite";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/rospatlite/2.1.12-1.tar.gz;
    sha256 = "df4c17ab1319aa95eaec2095e2f70be654bc2e298d5ef30cb6a1f9c3afc8bbd4";
  };

  buildInputs = [ std-msgs rospy ];
  propagatedBuildInputs = [ std-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
