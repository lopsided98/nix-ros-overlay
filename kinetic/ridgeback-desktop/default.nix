
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ridgeback-msgs, catkin, ridgeback-viz }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-desktop";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/kinetic/ridgeback_desktop/0.1.1-0.tar.gz;
    sha256 = "37850f60fe2ff7086e5cb0f0fe6b27f02a221c2f3b49bf49c13e5db4dcb0b155";
  };

  propagatedBuildInputs = [ ridgeback-msgs ridgeback-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Ridgeback from a ROS desktop.'';
    #license = lib.licenses.BSD;
  };
}