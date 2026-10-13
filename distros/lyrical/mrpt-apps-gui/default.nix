
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-graphslam, mrpt-kinematics, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-apps-gui";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_apps_gui/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "8d15aed8f899d7640a1a44b64ce11e830053843dec2737a1f6e13e89db6d3096";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-common mrpt-graphslam mrpt-kinematics mrpt-libapps-gui mrpt-nav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT graphical user interface applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
