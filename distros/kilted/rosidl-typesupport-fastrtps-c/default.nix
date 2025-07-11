
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, osrf-testing-tools-cpp, performance-test-fixture, python3, rcutils, rmw, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-kilted-rosidl-typesupport-fastrtps-c";
  version = "3.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/kilted/rosidl_typesupport_fastrtps_c/3.8.0-2.tar.gz";
    name = "3.8.0-2.tar.gz";
    sha256 = "b392c1050953aff19843a4b7ea87c46f98ad85f43dcd58d604c292e47452836e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture rcutils ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-python fastcdr python3 rmw rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core python3 rosidl-generator-c ];

  meta = {
    description = "Generate the C interfaces for eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
