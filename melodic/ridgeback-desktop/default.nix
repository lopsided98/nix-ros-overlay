
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ridgeback-viz, ridgeback-msgs }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-desktop";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/melodic/ridgeback_desktop/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "fa60a97d87f148815a154f6790fbf49f532669678b7ff381326cbf2797ee00f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ridgeback-viz ridgeback-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Ridgeback from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
