
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocast-components, agnocast-ioctl-wrapper, agnocast-sample-application, agnocast-sample-interfaces, agnocastlib, ament-cmake, ros2agnocast }:
buildRosPackage {
  pname = "ros-humble-agnocast";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "ec47032fd53e6cfa563962b13c0b0bd7a30f9849fdf6f943c4ad36f39b55195a";
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
