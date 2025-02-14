
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-control, crane-plus-description, crane-plus-moveit-config, cv-bridge, geometry-msgs, image-geometry, moveit-ros-planning-interface, opencv, rclcpp, tf2-geometry-msgs, usb-cam }:
buildRosPackage {
  pname = "ros-jazzy-crane-plus-examples";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/jazzy/crane_plus_examples/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "2238694940a5a30097b7ff88e78207221bdfdf0c330ab2b76407111d9b752e93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-moveit-config cv-bridge geometry-msgs image-geometry moveit-ros-planning-interface opencv opencv.cxxdev rclcpp tf2-geometry-msgs usb-cam ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CRANE+ V2 examples package";
    license = with lib.licenses; [ asl20 ];
  };
}
