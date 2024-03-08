
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, atf-core, atf-msgs, catkin, python3Packages, rosbag, rospy }:
buildRosPackage {
  pname = "ros-noetic-atf-plotter";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf_plotter/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "835253e7cc6bf2ba769778ebc764ea7afb83b08478d208422bd04c30676c95fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ atf-core atf-msgs python3Packages.matplotlib python3Packages.numpy rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ATF plotting functionalities for ATF results.'';
    license = with lib.licenses; [ asl20 ];
  };
}
