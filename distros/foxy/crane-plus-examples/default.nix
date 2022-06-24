
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-control, crane-plus-description, crane-plus-moveit-config, geometry-msgs, moveit-ros-planning-interface, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-examples";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus_examples/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "d6c55bae50f52d25bcf4022e959372dc13737d1412836b91ba63e65108ce1033";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-moveit-config geometry-msgs moveit-ros-planning-interface rclcpp tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+V2 examples package'';
    license = with lib.licenses; [ asl20 ];
  };
}
