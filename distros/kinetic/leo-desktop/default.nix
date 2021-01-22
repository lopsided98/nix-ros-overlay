
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-viz }:
buildRosPackage {
  pname = "ros-kinetic-leo-desktop";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/kinetic/leo_desktop/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "3f40142639613c4fefdab29dbbec6bce8baad6a079b53745e8275356eb7b1501";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for operating Leo Rover from ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
