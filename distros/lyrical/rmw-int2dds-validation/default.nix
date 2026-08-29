
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, diagnostic-msgs, geometry-msgs, int2dds-ffi-vendor, rcl, rclcpp, rclpy, rcutils, rmw, rmw-int2dds-cpp, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-typesupport-cpp, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmw-int2dds-validation";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/lyrical/rmw_int2dds_validation/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "6a499b872469e94996c380ae703af3861d5872ba42fa341a12957baccc99b8e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-test ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs int2dds-ffi-vendor rcl rclcpp rclpy rcutils rmw rmw-int2dds-cpp rosidl-dynamic-typesupport rosidl-runtime-c rosidl-typesupport-cpp std-msgs std-srvs test-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rclcpp and rclpy validation probes for the int2DDS RMW implementation:
    QoS behaviour checks (durability, history depth, deadline, liveliness,
    lifespan), content-filtered topic lifecycle, executor callback smoke checks
    and latency/throughput/readiness measurements.

    These live outside rmw_int2dds_cpp on purpose. rclcpp sits above the RMW
    layer (rclcpp -&gt; rcl -&gt; rmw_implementation -&gt; rmw_int2dds_cpp through the
    rmw_implementation_packages group), so an RMW implementation that depended
    on rclcpp would close a build dependency cycle. No upstream RMW does it;
    ros2/rmw_zenoh keeps its rclcpp-based checks in test_rmw_zenoh_cpp for the
    same reason.";
    license = with lib.licenses; [ asl20 ];
  };
}
