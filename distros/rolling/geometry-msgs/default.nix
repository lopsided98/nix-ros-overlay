
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-geometry-msgs";
  version = "5.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/geometry_msgs/5.10.2-1.tar.gz";
    name = "5.10.2-1.tar.gz";
    sha256 = "01eed2859a91c922811fa4d7d4d1bc3b1d0fc35ce048a123e9303565f940292c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some geometry related message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
