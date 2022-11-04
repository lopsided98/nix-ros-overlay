
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, copernicus-msgs, diff-drive-controller, dynamic-reconfigure, gazebo-ros-control, joint-state-controller, roscpp, std-msgs, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-copernicus-control";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_control/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2784e62785f7ccc852a56b863c0be8a9f6c458afd8b7f619d7874e062ce68074";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager copernicus-msgs diff-drive-controller dynamic-reconfigure gazebo-ros-control joint-state-controller roscpp std-msgs twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_control package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
