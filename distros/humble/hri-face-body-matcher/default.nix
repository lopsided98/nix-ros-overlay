
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-lint-auto, ament-lint-common, blas, diagnostic-msgs, diagnostic-updater, dlib, hri, hri-msgs, liblapack, lifecycle-msgs, opencv, rcl-interfaces, rclcpp, rclcpp-lifecycle, rclpy, rosgraph-msgs, sqlite }:
buildRosPackage {
  pname = "ros-humble-hri-face-body-matcher";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_face_body_matcher-release/archive/release/humble/hri_face_body_matcher/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "f93aa1ae680ec1b15271beeb41eabaac2986b442db02d10609d294c21eb9dff1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common hri-msgs lifecycle-msgs rcl-interfaces rclpy rosgraph-msgs ];
  propagatedBuildInputs = [ blas diagnostic-msgs diagnostic-updater dlib hri hri-msgs liblapack lifecycle-msgs opencv opencv.cxxdev rclcpp rclcpp-lifecycle sqlite ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The hri_face_body_matcher package";
    license = with lib.licenses; [ asl20 ];
  };
}
