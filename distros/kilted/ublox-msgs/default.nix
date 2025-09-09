
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-generators, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-kilted-ublox-msgs";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/kilted/ublox_msgs/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "c3e6b027dd65c7a3be4caec39c150c6c872230c4b88720b965c2047a145ea5af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  propagatedBuildInputs = [ sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "ublox_msgs contains raw messages for u-blox GNSS devices.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
