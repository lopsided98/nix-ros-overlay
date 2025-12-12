
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-yasmin-msgs";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_msgs/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "8c575d8558dd09d90e5e317c923205b20cd23e9ce171d38cab271c81251abcdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Msgs of (Yet Another State MachINe)";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
