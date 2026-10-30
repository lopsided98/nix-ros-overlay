
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt";
  version = "1.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/lyrical/rqt/1.10.7-1.tar.gz";
    name = "1.10.7-1.tar.gz";
    sha256 = "13dc4d9a3499b0df88d25a05601e5fd4a320f8a349706e930a663f1eefdf5faf";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
