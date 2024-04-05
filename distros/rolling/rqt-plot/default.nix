
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python-qt-binding, python3Packages, pythonPackages, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-plot";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/rolling/rqt_plot/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "99ec63fa2e0ce643940f2129eb30ce62f11b2fe1e280f7ef28d6d81e3b7ac795";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common std-msgs ];

  meta = {
    description = "rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
