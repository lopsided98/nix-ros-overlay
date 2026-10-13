
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, tobas-drone-msgs-adapter, tobas-dsp, tobas-fc1xx-core, tobas-hardware-common, tobas-ic-drivers, tobas-msgs-adapter, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-ros";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_ros/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "60ffc24f0821dcdf735f9db8ef416522aa11598042334f6dcd36ae4375eaffab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros tobas-drone-msgs-adapter tobas-dsp tobas-fc1xx-core tobas-hardware-common tobas-ic-drivers tobas-msgs-adapter tobas-real-common tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 sensor and actuator driver nodes for FC1xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
