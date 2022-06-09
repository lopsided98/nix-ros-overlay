
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-rti-connext-dds-cmake-module";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/humble/rti_connext_dds_cmake_module/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "9c498b779e8eda7f7c78c5ddf69c86e4a3b23cc8ed5e29942571b0dc6bc5ee67";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Helper module to provide access to RTI products like Connext DDS Professional'';
    license = with lib.licenses; [ asl20 ];
  };
}
