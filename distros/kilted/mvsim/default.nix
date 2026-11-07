
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, controller-manager, cppzmq, diagnostic-msgs, diff-drive-controller, eigen, hardware-interface, joint-state-broadcaster, mrpt-imgui, mrpt-imgui-vendor, mrpt-libros-bridge, mrpt-maps, mrpt-tfest, mrpt-topography, nav-msgs, onetbb, protobuf, python3, python3Packages, robot-state-publisher, ros-environment, ros2launch, sensor-msgs, simulation-interfaces, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-kilted-mvsim";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/kilted/mvsim/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1ed88d1093cbf1b3fea6985bda9a970125ab718f148b92f66675992c9f702a14";
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
