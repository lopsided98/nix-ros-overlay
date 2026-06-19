
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-graphslam, mrpt-kinematics, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-humble-mrpt-apps-gui";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_apps_gui/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "47d8785afa998498db0fbf5ed39b0c4a9974c97ca57f822bcd5ea19916760a2e";
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
