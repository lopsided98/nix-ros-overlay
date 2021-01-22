
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ridgeback-msgs, ridgeback-viz }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-desktop";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/melodic/ridgeback_desktop/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "5c7eeeaf0246b33c3f906ea00a4a525686eade472f858b50e81cf0cfcb111b5f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ridgeback-msgs ridgeback-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Ridgeback from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
