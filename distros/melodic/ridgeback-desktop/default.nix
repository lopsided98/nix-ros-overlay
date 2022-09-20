
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ridgeback-msgs, ridgeback-viz }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-desktop";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/melodic/ridgeback_desktop/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "373a75ac21b797cac2276f52e99c391d9da32553373cf4f407ab8fc4bfc940fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ridgeback-msgs ridgeback-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Ridgeback from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
