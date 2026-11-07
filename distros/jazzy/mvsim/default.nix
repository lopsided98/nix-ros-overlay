
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, controller-manager, cppzmq, diagnostic-msgs, diff-drive-controller, eigen, hardware-interface, joint-state-broadcaster, mrpt-imgui, mrpt-imgui-vendor, mrpt-libros-bridge, mrpt-maps, mrpt-tfest, mrpt-topography, nav-msgs, onetbb, protobuf, python3, python3Packages, robot-state-publisher, ros-environment, ros2launch, sensor-msgs, simulation-interfaces, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-jazzy-mvsim";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/jazzy/mvsim/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "3bfa944d0c823bbd9a3199e1f8258bc1eb488ce2a955a874288721eedb1f5dd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cli11 controller-manager cppzmq diagnostic-msgs diff-drive-controller eigen hardware-interface joint-state-broadcaster mrpt-imgui mrpt-imgui-vendor mrpt-libros-bridge mrpt-maps mrpt-tfest mrpt-topography nav-msgs onetbb protobuf python3 python3Packages.pip python3Packages.protobuf python3Packages.pybind11 python3Packages.pyyaml robot-state-publisher ros2launch sensor-msgs simulation-interfaces stereo-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "A lightweight multivehicle simulation framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
