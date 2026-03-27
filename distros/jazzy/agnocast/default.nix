
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocast-components, agnocast-ioctl-wrapper, agnocast-sample-application, agnocast-sample-interfaces, agnocastlib, ament-cmake, ros2agnocast }:
buildRosPackage {
  pname = "ros-jazzy-agnocast";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "20faa3ca2149d0533beff5cbdc8486527bfbee4892e445fa4832c6ddf66fd34f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs agnocast-cie-thread-configurator agnocast-components agnocast-ioctl-wrapper agnocast-sample-application agnocast-sample-interfaces agnocastlib ros2agnocast ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Agnocast: true zero-copy IPC middleware for ROS 2.";
    license = with lib.licenses; [ asl20 ];
  };
}
