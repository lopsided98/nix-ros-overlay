
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, geometry-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-marti-sensor-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/dashing/marti_sensor_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7faea5580cdc57fda947eee6cf3151e87c89a9a97e27b789b38e5cb3e94be1a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
