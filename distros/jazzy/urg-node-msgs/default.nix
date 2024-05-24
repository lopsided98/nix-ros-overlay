
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-urg-node-msgs";
  version = "1.0.1-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/jazzy/urg_node_msgs/1.0.1-9.tar.gz";
    name = "1.0.1-9.tar.gz";
    sha256 = "09762eee13c78846a566adbe4da1cd4688a3235f627e6359cbf160fd48806347";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "urg_node_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
