
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, rosidl-default-generators, sensor-msgs, ament-cmake-auto, std-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_msgs/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "15feca481eb70757111d88ed9d07d0ec07110443e739d8b9c16ea4606028b88b";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rosidl-default-generators sensor-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Interfaces between core Autoware.Auto components'';
    license = with lib.licenses; [ asl20 ];
  };
}
