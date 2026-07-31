
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-ros, nebula-msgs, nebula-sample-common, nebula-sample-decoders, nebula-sample-hw-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-sample";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "52c692ade7031305d112297cb68827a372bf616d5e6952443674279743a00c29";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater nebula-core-common nebula-core-ros nebula-msgs nebula-sample-common nebula-sample-decoders nebula-sample-hw-interfaces rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula Sample ROS 2 Package";
    license = with lib.licenses; [ asl20 ];
  };
}
