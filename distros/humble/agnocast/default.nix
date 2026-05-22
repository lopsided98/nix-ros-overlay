
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocast-components, agnocast-ioctl-wrapper, agnocast-sample-application, agnocast-sample-interfaces, agnocastlib, ament-cmake, ros2agnocast }:
buildRosPackage {
  pname = "ros-humble-agnocast";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "145973664af60e1a010146764e0a2946628ff3cc6d1b61d4fabca7aef23c865d";
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
