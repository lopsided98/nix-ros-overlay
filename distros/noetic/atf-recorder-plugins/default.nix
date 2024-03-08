
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, atf-msgs, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-atf-recorder-plugins";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf_recorder_plugins/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5498b09caf9f7401670de526e0c680967d3ac9680d16e2ad6a924934bf8a4797";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ atf-msgs python3Packages.six rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Plugins for the ATF recorder.'';
    license = with lib.licenses; [ asl20 ];
  };
}
