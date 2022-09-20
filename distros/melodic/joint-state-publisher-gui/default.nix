
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-melodic-joint-state-publisher-gui";
  version = "1.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/melodic/joint_state_publisher_gui/1.12.15-1.tar.gz";
    name = "1.12.15-1.tar.gz";
    sha256 = "f728911eb7f886ce99289fc18cd27528c91cb630c84a29d76d406f970ed775b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
