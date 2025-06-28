
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-aruco-markers-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/namo-robotics/aruco_markers-release/archive/release/humble/aruco_markers_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "0c27bfd87ee2f9a999b1973f89fd3973605aea29c283b0062806246673f3b1f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The aruco_markers_msgs package";
    license = with lib.licenses; [ mit ];
  };
}
