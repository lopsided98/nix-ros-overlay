
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 action-msgs = self.callPackage ./action-msgs {};

 action-tutorials-cpp = self.callPackage ./action-tutorials-cpp {};

 action-tutorials-interfaces = self.callPackage ./action-tutorials-interfaces {};

 action-tutorials-py = self.callPackage ./action-tutorials-py {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 ament-clang-format = self.callPackage ./ament-clang-format {};

 ament-clang-tidy = self.callPackage ./ament-clang-tidy {};

 ament-cmake = self.callPackage ./ament-cmake {};

 ament-cmake-auto = self.callPackage ./ament-cmake-auto {};

 ament-cmake-catch2 = self.callPackage ./ament-cmake-catch2 {};

 ament-cmake-clang-format = self.callPackage ./ament-cmake-clang-format {};

 ament-cmake-clang-tidy = self.callPackage ./ament-cmake-clang-tidy {};

 ament-cmake-copyright = self.callPackage ./ament-cmake-copyright {};

 ament-cmake-core = self.callPackage ./ament-cmake-core {};

 ament-cmake-cppcheck = self.callPackage ./ament-cmake-cppcheck {};

 ament-cmake-cpplint = self.callPackage ./ament-cmake-cpplint {};

 ament-cmake-export-definitions = self.callPackage ./ament-cmake-export-definitions {};

 ament-cmake-export-dependencies = self.callPackage ./ament-cmake-export-dependencies {};

 ament-cmake-export-include-directories = self.callPackage ./ament-cmake-export-include-directories {};

 ament-cmake-export-interfaces = self.callPackage ./ament-cmake-export-interfaces {};

 ament-cmake-export-libraries = self.callPackage ./ament-cmake-export-libraries {};

 ament-cmake-export-link-flags = self.callPackage ./ament-cmake-export-link-flags {};

 ament-cmake-export-targets = self.callPackage ./ament-cmake-export-targets {};

 ament-cmake-flake8 = self.callPackage ./ament-cmake-flake8 {};

 ament-cmake-gmock = self.callPackage ./ament-cmake-gmock {};

 ament-cmake-google-benchmark = self.callPackage ./ament-cmake-google-benchmark {};

 ament-cmake-gtest = self.callPackage ./ament-cmake-gtest {};

 ament-cmake-include-directories = self.callPackage ./ament-cmake-include-directories {};

 ament-cmake-libraries = self.callPackage ./ament-cmake-libraries {};

 ament-cmake-lint-cmake = self.callPackage ./ament-cmake-lint-cmake {};

 ament-cmake-mypy = self.callPackage ./ament-cmake-mypy {};

 ament-cmake-nose = self.callPackage ./ament-cmake-nose {};

 ament-cmake-pclint = self.callPackage ./ament-cmake-pclint {};

 ament-cmake-pep257 = self.callPackage ./ament-cmake-pep257 {};

 ament-cmake-pycodestyle = self.callPackage ./ament-cmake-pycodestyle {};

 ament-cmake-pyflakes = self.callPackage ./ament-cmake-pyflakes {};

 ament-cmake-pytest = self.callPackage ./ament-cmake-pytest {};

 ament-cmake-python = self.callPackage ./ament-cmake-python {};

 ament-cmake-ros = self.callPackage ./ament-cmake-ros {};

 ament-cmake-target-dependencies = self.callPackage ./ament-cmake-target-dependencies {};

 ament-cmake-test = self.callPackage ./ament-cmake-test {};

 ament-cmake-uncrustify = self.callPackage ./ament-cmake-uncrustify {};

 ament-cmake-version = self.callPackage ./ament-cmake-version {};

 ament-cmake-xmllint = self.callPackage ./ament-cmake-xmllint {};

 ament-copyright = self.callPackage ./ament-copyright {};

 ament-cppcheck = self.callPackage ./ament-cppcheck {};

 ament-cpplint = self.callPackage ./ament-cpplint {};

 ament-flake8 = self.callPackage ./ament-flake8 {};

 ament-index-cpp = self.callPackage ./ament-index-cpp {};

 ament-index-python = self.callPackage ./ament-index-python {};

 ament-lint = self.callPackage ./ament-lint {};

 ament-lint-auto = self.callPackage ./ament-lint-auto {};

 ament-lint-cmake = self.callPackage ./ament-lint-cmake {};

 ament-lint-common = self.callPackage ./ament-lint-common {};

 ament-mypy = self.callPackage ./ament-mypy {};

 ament-nodl = self.callPackage ./ament-nodl {};

 ament-package = self.callPackage ./ament-package {};

 ament-pclint = self.callPackage ./ament-pclint {};

 ament-pep257 = self.callPackage ./ament-pep257 {};

 ament-pycodestyle = self.callPackage ./ament-pycodestyle {};

 ament-pyflakes = self.callPackage ./ament-pyflakes {};

 ament-uncrustify = self.callPackage ./ament-uncrustify {};

 ament-xmllint = self.callPackage ./ament-xmllint {};

 angles = self.callPackage ./angles {};

 apex-containers = self.callPackage ./apex-containers {};

 apex-test-tools = self.callPackage ./apex-test-tools {};

 apriltag = self.callPackage ./apriltag {};

 asio-cmake-module = self.callPackage ./asio-cmake-module {};

 astuff-sensor-msgs = self.callPackage ./astuff-sensor-msgs {};

 automotive-autonomy-msgs = self.callPackage ./automotive-autonomy-msgs {};

 automotive-navigation-msgs = self.callPackage ./automotive-navigation-msgs {};

 automotive-platform-msgs = self.callPackage ./automotive-platform-msgs {};

 aws-robomaker-small-warehouse-world = self.callPackage ./aws-robomaker-small-warehouse-world {};

 backward-ros = self.callPackage ./backward-ros {};

 behaviortree-cpp-v3 = self.callPackage ./behaviortree-cpp-v3 {};

 bno055 = self.callPackage ./bno055 {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 bosch-locator-bridge = self.callPackage ./bosch-locator-bridge {};

 builtin-interfaces = self.callPackage ./builtin-interfaces {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 can-dbc-parser = self.callPackage ./can-dbc-parser {};

 can-msgs = self.callPackage ./can-msgs {};

 carla-msgs = self.callPackage ./carla-msgs {};

 cartographer = self.callPackage ./cartographer {};

 cartographer-ros = self.callPackage ./cartographer-ros {};

 cartographer-ros-msgs = self.callPackage ./cartographer-ros-msgs {};

 cascade-lifecycle-msgs = self.callPackage ./cascade-lifecycle-msgs {};

 class-loader = self.callPackage ./class-loader {};

 color-names = self.callPackage ./color-names {};

 common-interfaces = self.callPackage ./common-interfaces {};

 composition = self.callPackage ./composition {};

 composition-interfaces = self.callPackage ./composition-interfaces {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 connext-cmake-module = self.callPackage ./connext-cmake-module {};

 console-bridge-vendor = self.callPackage ./console-bridge-vendor {};

 contracts-lite-vendor = self.callPackage ./contracts-lite-vendor {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 costmap-queue = self.callPackage ./costmap-queue {};

 cv-bridge = self.callPackage ./cv-bridge {};

 cyclonedds = self.callPackage ./cyclonedds {};

 delphi-esr-msgs = self.callPackage ./delphi-esr-msgs {};

 delphi-mrr-msgs = self.callPackage ./delphi-mrr-msgs {};

 delphi-srr-msgs = self.callPackage ./delphi-srr-msgs {};

 demo-nodes-cpp = self.callPackage ./demo-nodes-cpp {};

 demo-nodes-cpp-native = self.callPackage ./demo-nodes-cpp-native {};

 demo-nodes-py = self.callPackage ./demo-nodes-py {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 depthimage-to-laserscan = self.callPackage ./depthimage-to-laserscan {};

 derived-object-msgs = self.callPackage ./derived-object-msgs {};

 desktop = self.callPackage ./desktop {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 dolly = self.callPackage ./dolly {};

 dolly-follow = self.callPackage ./dolly-follow {};

 dolly-gazebo = self.callPackage ./dolly-gazebo {};

 dolly-ignition = self.callPackage ./dolly-ignition {};

 domain-coordinator = self.callPackage ./domain-coordinator {};

 dsr-control2 = self.callPackage ./dsr-control2 {};

 dsr-description2 = self.callPackage ./dsr-description2 {};

 dsr-msgs2 = self.callPackage ./dsr-msgs2 {};

 dummy-map-server = self.callPackage ./dummy-map-server {};

 dummy-robot-bringup = self.callPackage ./dummy-robot-bringup {};

 dummy-sensors = self.callPackage ./dummy-sensors {};

 dwb-core = self.callPackage ./dwb-core {};

 dwb-critics = self.callPackage ./dwb-critics {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

 dwb-plugins = self.callPackage ./dwb-plugins {};

 dynamic-graph = self.callPackage ./dynamic-graph {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamixel-hardware-interface = self.callPackage ./dynamixel-hardware-interface {};

 dynamixel-sdk = self.callPackage ./dynamixel-sdk {};

 dynamixel-sdk-custom-interfaces = self.callPackage ./dynamixel-sdk-custom-interfaces {};

 dynamixel-sdk-examples = self.callPackage ./dynamixel-sdk-examples {};

 ecl-build = self.callPackage ./ecl-build {};

 ecl-command-line = self.callPackage ./ecl-command-line {};

 ecl-concepts = self.callPackage ./ecl-concepts {};

 ecl-config = self.callPackage ./ecl-config {};

 ecl-console = self.callPackage ./ecl-console {};

 ecl-containers = self.callPackage ./ecl-containers {};

 ecl-converters = self.callPackage ./ecl-converters {};

 ecl-converters-lite = self.callPackage ./ecl-converters-lite {};

 ecl-core = self.callPackage ./ecl-core {};

 ecl-core-apps = self.callPackage ./ecl-core-apps {};

 ecl-devices = self.callPackage ./ecl-devices {};

 ecl-eigen = self.callPackage ./ecl-eigen {};

 ecl-errors = self.callPackage ./ecl-errors {};

 ecl-exceptions = self.callPackage ./ecl-exceptions {};

 ecl-filesystem = self.callPackage ./ecl-filesystem {};

 ecl-formatters = self.callPackage ./ecl-formatters {};

 ecl-geometry = self.callPackage ./ecl-geometry {};

 ecl-io = self.callPackage ./ecl-io {};

 ecl-ipc = self.callPackage ./ecl-ipc {};

 ecl-license = self.callPackage ./ecl-license {};

 ecl-linear-algebra = self.callPackage ./ecl-linear-algebra {};

 ecl-lite = self.callPackage ./ecl-lite {};

 ecl-manipulators = self.callPackage ./ecl-manipulators {};

 ecl-math = self.callPackage ./ecl-math {};

 ecl-mobile-robot = self.callPackage ./ecl-mobile-robot {};

 ecl-mpl = self.callPackage ./ecl-mpl {};

 ecl-sigslots = self.callPackage ./ecl-sigslots {};

 ecl-sigslots-lite = self.callPackage ./ecl-sigslots-lite {};

 ecl-statistics = self.callPackage ./ecl-statistics {};

 ecl-streams = self.callPackage ./ecl-streams {};

 ecl-threads = self.callPackage ./ecl-threads {};

 ecl-time = self.callPackage ./ecl-time {};

 ecl-time-lite = self.callPackage ./ecl-time-lite {};

 ecl-tools = self.callPackage ./ecl-tools {};

 ecl-type-traits = self.callPackage ./ecl-type-traits {};

 ecl-utilities = self.callPackage ./ecl-utilities {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen3-cmake-module = self.callPackage ./eigen3-cmake-module {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigenpy = self.callPackage ./eigenpy {};

 eiquadprog = self.callPackage ./eiquadprog {};

 embree-vendor = self.callPackage ./embree-vendor {};

 espeak-interfaces = self.callPackage ./espeak-interfaces {};

 espeak-ros = self.callPackage ./espeak-ros {};

 example-interfaces = self.callPackage ./example-interfaces {};

 examples-rclcpp-minimal-action-client = self.callPackage ./examples-rclcpp-minimal-action-client {};

 examples-rclcpp-minimal-action-server = self.callPackage ./examples-rclcpp-minimal-action-server {};

 examples-rclcpp-minimal-client = self.callPackage ./examples-rclcpp-minimal-client {};

 examples-rclcpp-minimal-composition = self.callPackage ./examples-rclcpp-minimal-composition {};

 examples-rclcpp-minimal-publisher = self.callPackage ./examples-rclcpp-minimal-publisher {};

 examples-rclcpp-minimal-service = self.callPackage ./examples-rclcpp-minimal-service {};

 examples-rclcpp-minimal-subscriber = self.callPackage ./examples-rclcpp-minimal-subscriber {};

 examples-rclcpp-minimal-timer = self.callPackage ./examples-rclcpp-minimal-timer {};

 examples-rclcpp-multithreaded-executor = self.callPackage ./examples-rclcpp-multithreaded-executor {};

 examples-rclpy-executors = self.callPackage ./examples-rclpy-executors {};

 examples-rclpy-minimal-action-client = self.callPackage ./examples-rclpy-minimal-action-client {};

 examples-rclpy-minimal-action-server = self.callPackage ./examples-rclpy-minimal-action-server {};

 examples-rclpy-minimal-client = self.callPackage ./examples-rclpy-minimal-client {};

 examples-rclpy-minimal-publisher = self.callPackage ./examples-rclpy-minimal-publisher {};

 examples-rclpy-minimal-service = self.callPackage ./examples-rclpy-minimal-service {};

 examples-rclpy-minimal-subscriber = self.callPackage ./examples-rclpy-minimal-subscriber {};

 examples-tf2-py = self.callPackage ./examples-tf2-py {};

 fastcdr = self.callPackage ./fastcdr {};

 fastrtps = self.callPackage ./fastrtps {};

 fastrtps-cmake-module = self.callPackage ./fastrtps-cmake-module {};

 filters = self.callPackage ./filters {};

 fmi-adapter = self.callPackage ./fmi-adapter {};

 fmi-adapter-examples = self.callPackage ./fmi-adapter-examples {};

 fmilibrary-vendor = self.callPackage ./fmilibrary-vendor {};

 foonathan-memory-vendor = self.callPackage ./foonathan-memory-vendor {};

 force-torque-sensor-broadcaster = self.callPackage ./force-torque-sensor-broadcaster {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 gazebo-dev = self.callPackage ./gazebo-dev {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros2-control = self.callPackage ./gazebo-ros2-control {};

 gazebo-ros2-control-demos = self.callPackage ./gazebo-ros2-control-demos {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometric-shapes = self.callPackage ./geometric-shapes {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 gmock-vendor = self.callPackage ./gmock-vendor {};

 google-benchmark-vendor = self.callPackage ./google-benchmark-vendor {};

 gps-msgs = self.callPackage ./gps-msgs {};

 gps-tools = self.callPackage ./gps-tools {};

 gps-umd = self.callPackage ./gps-umd {};

 gpsd-client = self.callPackage ./gpsd-client {};

 graph-msgs = self.callPackage ./graph-msgs {};

 grasping-msgs = self.callPackage ./grasping-msgs {};

 grbl-msgs = self.callPackage ./grbl-msgs {};

 grbl-ros = self.callPackage ./grbl-ros {};

 gripper-controllers = self.callPackage ./gripper-controllers {};

 gtest-vendor = self.callPackage ./gtest-vendor {};

 hardware-interface = self.callPackage ./hardware-interface {};

 hls-lfcd-lds-driver = self.callPackage ./hls-lfcd-lds-driver {};

 ibeo-msgs = self.callPackage ./ibeo-msgs {};

 ifm3d-core = self.callPackage ./ifm3d-core {};

 image-common = self.callPackage ./image-common {};

 image-geometry = self.callPackage ./image-geometry {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-rotate = self.callPackage ./image-rotate {};

 image-tools = self.callPackage ./image-tools {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 imu-sensor-broadcaster = self.callPackage ./imu-sensor-broadcaster {};

 interactive-markers = self.callPackage ./interactive-markers {};

 intra-process-demo = self.callPackage ./intra-process-demo {};

 io-context = self.callPackage ./io-context {};

 joint-state-broadcaster = self.callPackage ./joint-state-broadcaster {};

 joint-state-controller = self.callPackage ./joint-state-controller {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-state-publisher-gui = self.callPackage ./joint-state-publisher-gui {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joy = self.callPackage ./joy {};

 joy-linux = self.callPackage ./joy-linux {};

 joy-teleop = self.callPackage ./joy-teleop {};

 kartech-linear-actuator-msgs = self.callPackage ./kartech-linear-actuator-msgs {};

 kdl-parser = self.callPackage ./kdl-parser {};

 key-teleop = self.callPackage ./key-teleop {};

 kobuki-core = self.callPackage ./kobuki-core {};

 kobuki-firmware = self.callPackage ./kobuki-firmware {};

 kobuki-ftdi = self.callPackage ./kobuki-ftdi {};

 lanelet2 = self.callPackage ./lanelet2 {};

 lanelet2-core = self.callPackage ./lanelet2-core {};

 lanelet2-examples = self.callPackage ./lanelet2-examples {};

 lanelet2-io = self.callPackage ./lanelet2-io {};

 lanelet2-maps = self.callPackage ./lanelet2-maps {};

 lanelet2-projection = self.callPackage ./lanelet2-projection {};

 lanelet2-python = self.callPackage ./lanelet2-python {};

 lanelet2-routing = self.callPackage ./lanelet2-routing {};

 lanelet2-traffic-rules = self.callPackage ./lanelet2-traffic-rules {};

 lanelet2-validation = self.callPackage ./lanelet2-validation {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-proc = self.callPackage ./laser-proc {};

 launch = self.callPackage ./launch {};

 launch-pal = self.callPackage ./launch-pal {};

 launch-ros = self.callPackage ./launch-ros {};

 launch-system-modes = self.callPackage ./launch-system-modes {};

 launch-testing = self.callPackage ./launch-testing {};

 launch-testing-ament-cmake = self.callPackage ./launch-testing-ament-cmake {};

 launch-testing-ros = self.callPackage ./launch-testing-ros {};

 launch-xml = self.callPackage ./launch-xml {};

 launch-yaml = self.callPackage ./launch-yaml {};

 lgsvl-bridge = self.callPackage ./lgsvl-bridge {};

 lgsvl-msgs = self.callPackage ./lgsvl-msgs {};

 libcurl-vendor = self.callPackage ./libcurl-vendor {};

 libg2o = self.callPackage ./libg2o {};

 libmavconn = self.callPackage ./libmavconn {};

 libphidget22 = self.callPackage ./libphidget22 {};

 librealsense2 = self.callPackage ./librealsense2 {};

 libstatistics-collector = self.callPackage ./libstatistics-collector {};

 libyaml-vendor = self.callPackage ./libyaml-vendor {};

 lifecycle = self.callPackage ./lifecycle {};

 lifecycle-msgs = self.callPackage ./lifecycle-msgs {};

 logging-demo = self.callPackage ./logging-demo {};

 lua-vendor = self.callPackage ./lua-vendor {};

 map-msgs = self.callPackage ./map-msgs {};

 map-transformer = self.callPackage ./map-transformer {};

 mapviz = self.callPackage ./mapviz {};

 mapviz-interfaces = self.callPackage ./mapviz-interfaces {};

 mapviz-plugins = self.callPackage ./mapviz-plugins {};

 marti-can-msgs = self.callPackage ./marti-can-msgs {};

 marti-common-msgs = self.callPackage ./marti-common-msgs {};

 marti-dbw-msgs = self.callPackage ./marti-dbw-msgs {};

 marti-nav-msgs = self.callPackage ./marti-nav-msgs {};

 marti-perception-msgs = self.callPackage ./marti-perception-msgs {};

 marti-sensor-msgs = self.callPackage ./marti-sensor-msgs {};

 marti-status-msgs = self.callPackage ./marti-status-msgs {};

 marti-visualization-msgs = self.callPackage ./marti-visualization-msgs {};

 massrobotics-amr-sender = self.callPackage ./massrobotics-amr-sender {};

 mavlink = self.callPackage ./mavlink {};

 mavros = self.callPackage ./mavros {};

 mavros-msgs = self.callPackage ./mavros-msgs {};

 menge-vendor = self.callPackage ./menge-vendor {};

 message-filters = self.callPackage ./message-filters {};

 micro-ros-msgs = self.callPackage ./micro-ros-msgs {};

 mimick-vendor = self.callPackage ./mimick-vendor {};

 mobileye-560-660-msgs = self.callPackage ./mobileye-560-660-msgs {};

 mocap-msgs = self.callPackage ./mocap-msgs {};

 mouse-teleop = self.callPackage ./mouse-teleop {};

 move-base-msgs = self.callPackage ./move-base-msgs {};

 moveit = self.callPackage ./moveit {};

 moveit-common = self.callPackage ./moveit-common {};

 moveit-core = self.callPackage ./moveit-core {};

 moveit-kinematics = self.callPackage ./moveit-kinematics {};

 moveit-msgs = self.callPackage ./moveit-msgs {};

 moveit-planners = self.callPackage ./moveit-planners {};

 moveit-planners-ompl = self.callPackage ./moveit-planners-ompl {};

 moveit-plugins = self.callPackage ./moveit-plugins {};

 moveit-resources = self.callPackage ./moveit-resources {};

 moveit-resources-fanuc-description = self.callPackage ./moveit-resources-fanuc-description {};

 moveit-resources-fanuc-moveit-config = self.callPackage ./moveit-resources-fanuc-moveit-config {};

 moveit-resources-panda-description = self.callPackage ./moveit-resources-panda-description {};

 moveit-resources-panda-moveit-config = self.callPackage ./moveit-resources-panda-moveit-config {};

 moveit-resources-pr2-description = self.callPackage ./moveit-resources-pr2-description {};

 moveit-ros = self.callPackage ./moveit-ros {};

 moveit-ros-benchmarks = self.callPackage ./moveit-ros-benchmarks {};

 moveit-ros-move-group = self.callPackage ./moveit-ros-move-group {};

 moveit-ros-occupancy-map-monitor = self.callPackage ./moveit-ros-occupancy-map-monitor {};

 moveit-ros-perception = self.callPackage ./moveit-ros-perception {};

 moveit-ros-planning = self.callPackage ./moveit-ros-planning {};

 moveit-ros-planning-interface = self.callPackage ./moveit-ros-planning-interface {};

 moveit-ros-robot-interaction = self.callPackage ./moveit-ros-robot-interaction {};

 moveit-ros-visualization = self.callPackage ./moveit-ros-visualization {};

 moveit-ros-warehouse = self.callPackage ./moveit-ros-warehouse {};

 moveit-runtime = self.callPackage ./moveit-runtime {};

 moveit-servo = self.callPackage ./moveit-servo {};

 moveit-simple-controller-manager = self.callPackage ./moveit-simple-controller-manager {};

 mppic = self.callPackage ./mppic {};

 mrt-cmake-modules = self.callPackage ./mrt-cmake-modules {};

 multires-image = self.callPackage ./multires-image {};

 nav2-amcl = self.callPackage ./nav2-amcl {};

 nav2-behavior-tree = self.callPackage ./nav2-behavior-tree {};

 nav2-bringup = self.callPackage ./nav2-bringup {};

 nav2-bt-navigator = self.callPackage ./nav2-bt-navigator {};

 nav2-common = self.callPackage ./nav2-common {};

 nav2-controller = self.callPackage ./nav2-controller {};

 nav2-core = self.callPackage ./nav2-core {};

 nav2-costmap-2d = self.callPackage ./nav2-costmap-2d {};

 nav2-dwb-controller = self.callPackage ./nav2-dwb-controller {};

 nav2-gazebo-spawner = self.callPackage ./nav2-gazebo-spawner {};

 nav2-lifecycle-manager = self.callPackage ./nav2-lifecycle-manager {};

 nav2-map-server = self.callPackage ./nav2-map-server {};

 nav2-msgs = self.callPackage ./nav2-msgs {};

 nav2-navfn-planner = self.callPackage ./nav2-navfn-planner {};

 nav2-planner = self.callPackage ./nav2-planner {};

 nav2-recoveries = self.callPackage ./nav2-recoveries {};

 nav2-regulated-pure-pursuit-controller = self.callPackage ./nav2-regulated-pure-pursuit-controller {};

 nav2-rviz-plugins = self.callPackage ./nav2-rviz-plugins {};

 nav2-system-tests = self.callPackage ./nav2-system-tests {};

 nav2-util = self.callPackage ./nav2-util {};

 nav2-voxel-grid = self.callPackage ./nav2-voxel-grid {};

 nav2-waypoint-follower = self.callPackage ./nav2-waypoint-follower {};

 nav-2d-msgs = self.callPackage ./nav-2d-msgs {};

 nav-2d-utils = self.callPackage ./nav-2d-utils {};

 nav-msgs = self.callPackage ./nav-msgs {};

 navigation2 = self.callPackage ./navigation2 {};

 neobotix-usboard-msgs = self.callPackage ./neobotix-usboard-msgs {};

 nerian-stereo = self.callPackage ./nerian-stereo {};

 nmea-msgs = self.callPackage ./nmea-msgs {};

 nodl-python = self.callPackage ./nodl-python {};

 nonpersistent-voxel-layer = self.callPackage ./nonpersistent-voxel-layer {};

 novatel-gps-driver = self.callPackage ./novatel-gps-driver {};

 novatel-gps-msgs = self.callPackage ./novatel-gps-msgs {};

 ntpd-driver = self.callPackage ./ntpd-driver {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 octomap = self.callPackage ./octomap {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octovis = self.callPackage ./octovis {};

 ompl = self.callPackage ./ompl {};

 openvslam = self.callPackage ./openvslam {};

 openzen-driver = self.callPackage ./openzen-driver {};

 oroca-rqt-command = self.callPackage ./oroca-rqt-command {};

 orocos-kdl = self.callPackage ./orocos-kdl {};

 osqp-vendor = self.callPackage ./osqp-vendor {};

 osrf-pycommon = self.callPackage ./osrf-pycommon {};

 osrf-testing-tools-cpp = self.callPackage ./osrf-testing-tools-cpp {};

 ouster-msgs = self.callPackage ./ouster-msgs {};

 pacmod-msgs = self.callPackage ./pacmod-msgs {};

 pal-gazebo-worlds = self.callPackage ./pal-gazebo-worlds {};

 pal-statistics = self.callPackage ./pal-statistics {};

 pal-statistics-msgs = self.callPackage ./pal-statistics-msgs {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 pendulum-control = self.callPackage ./pendulum-control {};

 pendulum-msgs = self.callPackage ./pendulum-msgs {};

 perception-pcl = self.callPackage ./perception-pcl {};

 performance-test-fixture = self.callPackage ./performance-test-fixture {};

 phidgets-accelerometer = self.callPackage ./phidgets-accelerometer {};

 phidgets-analog-inputs = self.callPackage ./phidgets-analog-inputs {};

 phidgets-api = self.callPackage ./phidgets-api {};

 phidgets-digital-inputs = self.callPackage ./phidgets-digital-inputs {};

 phidgets-digital-outputs = self.callPackage ./phidgets-digital-outputs {};

 phidgets-drivers = self.callPackage ./phidgets-drivers {};

 phidgets-gyroscope = self.callPackage ./phidgets-gyroscope {};

 phidgets-high-speed-encoder = self.callPackage ./phidgets-high-speed-encoder {};

 phidgets-ik = self.callPackage ./phidgets-ik {};

 phidgets-magnetometer = self.callPackage ./phidgets-magnetometer {};

 phidgets-motors = self.callPackage ./phidgets-motors {};

 phidgets-msgs = self.callPackage ./phidgets-msgs {};

 phidgets-spatial = self.callPackage ./phidgets-spatial {};

 phidgets-temperature = self.callPackage ./phidgets-temperature {};

 picknik-ament-copyright = self.callPackage ./picknik-ament-copyright {};

 plansys2-bringup = self.callPackage ./plansys2-bringup {};

 plansys2-bt-actions = self.callPackage ./plansys2-bt-actions {};

 plansys2-core = self.callPackage ./plansys2-core {};

 plansys2-domain-expert = self.callPackage ./plansys2-domain-expert {};

 plansys2-executor = self.callPackage ./plansys2-executor {};

 plansys2-lifecycle-manager = self.callPackage ./plansys2-lifecycle-manager {};

 plansys2-msgs = self.callPackage ./plansys2-msgs {};

 plansys2-pddl-parser = self.callPackage ./plansys2-pddl-parser {};

 plansys2-planner = self.callPackage ./plansys2-planner {};

 plansys2-popf-plan-solver = self.callPackage ./plansys2-popf-plan-solver {};

 plansys2-problem-expert = self.callPackage ./plansys2-problem-expert {};

 plansys2-terminal = self.callPackage ./plansys2-terminal {};

 plotjuggler = self.callPackage ./plotjuggler {};

 plotjuggler-msgs = self.callPackage ./plotjuggler-msgs {};

 plotjuggler-ros = self.callPackage ./plotjuggler-ros {};

 pluginlib = self.callPackage ./pluginlib {};

 pmb2-2dnav = self.callPackage ./pmb2-2dnav {};

 pmb2-2dnav-gazebo = self.callPackage ./pmb2-2dnav-gazebo {};

 pmb2-bringup = self.callPackage ./pmb2-bringup {};

 pmb2-controller-configuration = self.callPackage ./pmb2-controller-configuration {};

 pmb2-description = self.callPackage ./pmb2-description {};

 pmb2-gazebo = self.callPackage ./pmb2-gazebo {};

 pmb2-maps = self.callPackage ./pmb2-maps {};

 pmb2-navigation = self.callPackage ./pmb2-navigation {};

 pmb2-robot = self.callPackage ./pmb2-robot {};

 pmb2-simulation = self.callPackage ./pmb2-simulation {};

 point-cloud-msg-wrapper = self.callPackage ./point-cloud-msg-wrapper {};

 pointcloud-to-laserscan = self.callPackage ./pointcloud-to-laserscan {};

 position-controllers = self.callPackage ./position-controllers {};

 py-trees-ros = self.callPackage ./py-trees-ros {};

 py-trees-ros-interfaces = self.callPackage ./py-trees-ros-interfaces {};

 pybind11-vendor = self.callPackage ./pybind11-vendor {};

 python-cmake-module = self.callPackage ./python-cmake-module {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 qpoases-vendor = self.callPackage ./qpoases-vendor {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 quality-of-service-demo-cpp = self.callPackage ./quality-of-service-demo-cpp {};

 quality-of-service-demo-py = self.callPackage ./quality-of-service-demo-py {};

 quaternion-operation = self.callPackage ./quaternion-operation {};

 radar-msgs = self.callPackage ./radar-msgs {};

 random-numbers = self.callPackage ./random-numbers {};

 raptor-dbw-can = self.callPackage ./raptor-dbw-can {};

 raptor-dbw-joystick = self.callPackage ./raptor-dbw-joystick {};

 raptor-dbw-msgs = self.callPackage ./raptor-dbw-msgs {};

 raptor-pdu = self.callPackage ./raptor-pdu {};

 raptor-pdu-msgs = self.callPackage ./raptor-pdu-msgs {};

 raspimouse = self.callPackage ./raspimouse {};

 raspimouse-msgs = self.callPackage ./raspimouse-msgs {};

 rc-common-msgs = self.callPackage ./rc-common-msgs {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rc-genicam-driver = self.callPackage ./rc-genicam-driver {};

 rc-reason-clients = self.callPackage ./rc-reason-clients {};

 rc-reason-msgs = self.callPackage ./rc-reason-msgs {};

 rcdiscover = self.callPackage ./rcdiscover {};

 rcl = self.callPackage ./rcl {};

 rcl-action = self.callPackage ./rcl-action {};

 rcl-interfaces = self.callPackage ./rcl-interfaces {};

 rcl-lifecycle = self.callPackage ./rcl-lifecycle {};

 rcl-logging-log4cxx = self.callPackage ./rcl-logging-log4cxx {};

 rcl-logging-noop = self.callPackage ./rcl-logging-noop {};

 rcl-logging-spdlog = self.callPackage ./rcl-logging-spdlog {};

 rcl-yaml-param-parser = self.callPackage ./rcl-yaml-param-parser {};

 rclc = self.callPackage ./rclc {};

 rclc-examples = self.callPackage ./rclc-examples {};

 rclc-lifecycle = self.callPackage ./rclc-lifecycle {};

 rclcpp = self.callPackage ./rclcpp {};

 rclcpp-action = self.callPackage ./rclcpp-action {};

 rclcpp-cascade-lifecycle = self.callPackage ./rclcpp-cascade-lifecycle {};

 rclcpp-components = self.callPackage ./rclcpp-components {};

 rclcpp-lifecycle = self.callPackage ./rclcpp-lifecycle {};

 rclpy = self.callPackage ./rclpy {};

 rcpputils = self.callPackage ./rcpputils {};

 rcutils = self.callPackage ./rcutils {};

 realsense2-camera = self.callPackage ./realsense2-camera {};

 realsense2-camera-msgs = self.callPackage ./realsense2-camera-msgs {};

 realsense2-description = self.callPackage ./realsense2-description {};

 realsense-examples = self.callPackage ./realsense-examples {};

 realsense-hardware-interface = self.callPackage ./realsense-hardware-interface {};

 realsense-msgs = self.callPackage ./realsense-msgs {};

 realsense-node = self.callPackage ./realsense-node {};

 realsense-ros = self.callPackage ./realsense-ros {};

 realtime-tools = self.callPackage ./realtime-tools {};

 resource-retriever = self.callPackage ./resource-retriever {};

 rmf-battery = self.callPackage ./rmf-battery {};

 rmf-building-map-msgs = self.callPackage ./rmf-building-map-msgs {};

 rmf-building-map-tools = self.callPackage ./rmf-building-map-tools {};

 rmf-building-sim-common = self.callPackage ./rmf-building-sim-common {};

 rmf-building-sim-gazebo-plugins = self.callPackage ./rmf-building-sim-gazebo-plugins {};

 rmf-charger-msgs = self.callPackage ./rmf-charger-msgs {};

 rmf-cmake-uncrustify = self.callPackage ./rmf-cmake-uncrustify {};

 rmf-demos = self.callPackage ./rmf-demos {};

 rmf-demos-assets = self.callPackage ./rmf-demos-assets {};

 rmf-demos-dashboard-resources = self.callPackage ./rmf-demos-dashboard-resources {};

 rmf-demos-gz = self.callPackage ./rmf-demos-gz {};

 rmf-demos-ign = self.callPackage ./rmf-demos-ign {};

 rmf-demos-maps = self.callPackage ./rmf-demos-maps {};

 rmf-demos-tasks = self.callPackage ./rmf-demos-tasks {};

 rmf-dispenser-msgs = self.callPackage ./rmf-dispenser-msgs {};

 rmf-door-msgs = self.callPackage ./rmf-door-msgs {};

 rmf-fleet-adapter = self.callPackage ./rmf-fleet-adapter {};

 rmf-fleet-adapter-python = self.callPackage ./rmf-fleet-adapter-python {};

 rmf-fleet-msgs = self.callPackage ./rmf-fleet-msgs {};

 rmf-ingestor-msgs = self.callPackage ./rmf-ingestor-msgs {};

 rmf-lift-msgs = self.callPackage ./rmf-lift-msgs {};

 rmf-robot-sim-common = self.callPackage ./rmf-robot-sim-common {};

 rmf-robot-sim-gazebo-plugins = self.callPackage ./rmf-robot-sim-gazebo-plugins {};

 rmf-task = self.callPackage ./rmf-task {};

 rmf-task-msgs = self.callPackage ./rmf-task-msgs {};

 rmf-task-ros2 = self.callPackage ./rmf-task-ros2 {};

 rmf-traffic = self.callPackage ./rmf-traffic {};

 rmf-traffic-editor = self.callPackage ./rmf-traffic-editor {};

 rmf-traffic-editor-assets = self.callPackage ./rmf-traffic-editor-assets {};

 rmf-traffic-editor-test-maps = self.callPackage ./rmf-traffic-editor-test-maps {};

 rmf-traffic-msgs = self.callPackage ./rmf-traffic-msgs {};

 rmf-traffic-ros2 = self.callPackage ./rmf-traffic-ros2 {};

 rmf-utils = self.callPackage ./rmf-utils {};

 rmf-visualization = self.callPackage ./rmf-visualization {};

 rmf-visualization-building-systems = self.callPackage ./rmf-visualization-building-systems {};

 rmf-visualization-fleet-states = self.callPackage ./rmf-visualization-fleet-states {};

 rmf-visualization-msgs = self.callPackage ./rmf-visualization-msgs {};

 rmf-visualization-rviz2-plugins = self.callPackage ./rmf-visualization-rviz2-plugins {};

 rmf-visualization-schedule = self.callPackage ./rmf-visualization-schedule {};

 rmf-workcell-msgs = self.callPackage ./rmf-workcell-msgs {};

 rmw = self.callPackage ./rmw {};

 rmw-connext-cpp = self.callPackage ./rmw-connext-cpp {};

 rmw-connext-shared-cpp = self.callPackage ./rmw-connext-shared-cpp {};

 rmw-cyclonedds-cpp = self.callPackage ./rmw-cyclonedds-cpp {};

 rmw-dds-common = self.callPackage ./rmw-dds-common {};

 rmw-fastrtps-cpp = self.callPackage ./rmw-fastrtps-cpp {};

 rmw-fastrtps-dynamic-cpp = self.callPackage ./rmw-fastrtps-dynamic-cpp {};

 rmw-fastrtps-shared-cpp = self.callPackage ./rmw-fastrtps-shared-cpp {};

 rmw-implementation = self.callPackage ./rmw-implementation {};

 rmw-implementation-cmake = self.callPackage ./rmw-implementation-cmake {};

 robot-controllers = self.callPackage ./robot-controllers {};

 robot-controllers-interface = self.callPackage ./robot-controllers-interface {};

 robot-controllers-msgs = self.callPackage ./robot-controllers-msgs {};

 robot-localization = self.callPackage ./robot-localization {};

 robot-state-publisher = self.callPackage ./robot-state-publisher {};

 ros1-bridge = self.callPackage ./ros1-bridge {};

 ros1-rosbag-storage-vendor = self.callPackage ./ros1-rosbag-storage-vendor {};

 ros2-control = self.callPackage ./ros2-control {};

 ros2-control-test-assets = self.callPackage ./ros2-control-test-assets {};

 ros2-controllers = self.callPackage ./ros2-controllers {};

 ros2-ouster = self.callPackage ./ros2-ouster {};

 ros2-socketcan = self.callPackage ./ros2-socketcan {};

 ros2action = self.callPackage ./ros2action {};

 ros2bag = self.callPackage ./ros2bag {};

 ros2cli = self.callPackage ./ros2cli {};

 ros2cli-common-extensions = self.callPackage ./ros2cli-common-extensions {};

 ros2component = self.callPackage ./ros2component {};

 ros2controlcli = self.callPackage ./ros2controlcli {};

 ros2interface = self.callPackage ./ros2interface {};

 ros2launch = self.callPackage ./ros2launch {};

 ros2lifecycle = self.callPackage ./ros2lifecycle {};

 ros2lifecycle-test-fixtures = self.callPackage ./ros2lifecycle-test-fixtures {};

 ros2multicast = self.callPackage ./ros2multicast {};

 ros2node = self.callPackage ./ros2node {};

 ros2nodl = self.callPackage ./ros2nodl {};

 ros2param = self.callPackage ./ros2param {};

 ros2pkg = self.callPackage ./ros2pkg {};

 ros2run = self.callPackage ./ros2run {};

 ros2service = self.callPackage ./ros2service {};

 ros2test = self.callPackage ./ros2test {};

 ros2topic = self.callPackage ./ros2topic {};

 ros2trace = self.callPackage ./ros2trace {};

 ros2trace-analysis = self.callPackage ./ros2trace-analysis {};

 ros-base = self.callPackage ./ros-base {};

 ros-core = self.callPackage ./ros-core {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-ign = self.callPackage ./ros-ign {};

 ros-ign-bridge = self.callPackage ./ros-ign-bridge {};

 ros-ign-image = self.callPackage ./ros-ign-image {};

 ros-ign-interfaces = self.callPackage ./ros-ign-interfaces {};

 ros-testing = self.callPackage ./ros-testing {};

 ros-workspace = self.callPackage ./ros-workspace {};

 rosapi = self.callPackage ./rosapi {};

 rosauth = self.callPackage ./rosauth {};

 rosbag2 = self.callPackage ./rosbag2 {};

 rosbag2-bag-v2-plugins = self.callPackage ./rosbag2-bag-v2-plugins {};

 rosbag2-compression = self.callPackage ./rosbag2-compression {};

 rosbag2-converter-default-plugins = self.callPackage ./rosbag2-converter-default-plugins {};

 rosbag2-cpp = self.callPackage ./rosbag2-cpp {};

 rosbag2-storage = self.callPackage ./rosbag2-storage {};

 rosbag2-storage-default-plugins = self.callPackage ./rosbag2-storage-default-plugins {};

 rosbag2-test-common = self.callPackage ./rosbag2-test-common {};

 rosbag2-tests = self.callPackage ./rosbag2-tests {};

 rosbag2-transport = self.callPackage ./rosbag2-transport {};

 rosbridge-library = self.callPackage ./rosbridge-library {};

 rosbridge-msgs = self.callPackage ./rosbridge-msgs {};

 rosbridge-server = self.callPackage ./rosbridge-server {};

 rosbridge-suite = self.callPackage ./rosbridge-suite {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 rosidl-adapter = self.callPackage ./rosidl-adapter {};

 rosidl-cmake = self.callPackage ./rosidl-cmake {};

 rosidl-default-generators = self.callPackage ./rosidl-default-generators {};

 rosidl-default-runtime = self.callPackage ./rosidl-default-runtime {};

 rosidl-generator-c = self.callPackage ./rosidl-generator-c {};

 rosidl-generator-cpp = self.callPackage ./rosidl-generator-cpp {};

 rosidl-generator-dds-idl = self.callPackage ./rosidl-generator-dds-idl {};

 rosidl-generator-py = self.callPackage ./rosidl-generator-py {};

 rosidl-parser = self.callPackage ./rosidl-parser {};

 rosidl-runtime-c = self.callPackage ./rosidl-runtime-c {};

 rosidl-runtime-cpp = self.callPackage ./rosidl-runtime-cpp {};

 rosidl-runtime-py = self.callPackage ./rosidl-runtime-py {};

 rosidl-typesupport-c = self.callPackage ./rosidl-typesupport-c {};

 rosidl-typesupport-connext-c = self.callPackage ./rosidl-typesupport-connext-c {};

 rosidl-typesupport-connext-cpp = self.callPackage ./rosidl-typesupport-connext-cpp {};

 rosidl-typesupport-cpp = self.callPackage ./rosidl-typesupport-cpp {};

 rosidl-typesupport-fastrtps-c = self.callPackage ./rosidl-typesupport-fastrtps-c {};

 rosidl-typesupport-fastrtps-cpp = self.callPackage ./rosidl-typesupport-fastrtps-cpp {};

 rosidl-typesupport-interface = self.callPackage ./rosidl-typesupport-interface {};

 rosidl-typesupport-introspection-c = self.callPackage ./rosidl-typesupport-introspection-c {};

 rosidl-typesupport-introspection-cpp = self.callPackage ./rosidl-typesupport-introspection-cpp {};

 rosxbeepy = self.callPackage ./rosxbeepy {};

 rover-bringup = self.callPackage ./rover-bringup {};

 rover-description = self.callPackage ./rover-description {};

 rover-driver = self.callPackage ./rover-driver {};

 rover-msgs = self.callPackage ./rover-msgs {};

 rover-navigation = self.callPackage ./rover-navigation {};

 rover-simulation = self.callPackage ./rover-simulation {};

 rover-teleop = self.callPackage ./rover-teleop {};

 roverrobotics-ros2 = self.callPackage ./roverrobotics-ros2 {};

 rplidar-ros = self.callPackage ./rplidar-ros {};

 rpyutils = self.callPackage ./rpyutils {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-monitor = self.callPackage ./rqt-robot-monitor {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-top = self.callPackage ./rqt-top {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rt-usb-9axisimu-driver = self.callPackage ./rt-usb-9axisimu-driver {};

 rttest = self.callPackage ./rttest {};

 ruckig = self.callPackage ./ruckig {};

 run-move-group = self.callPackage ./run-move-group {};

 run-moveit-cpp = self.callPackage ./run-moveit-cpp {};

 run-ompl-constrained-planning = self.callPackage ./run-ompl-constrained-planning {};

 rviz2 = self.callPackage ./rviz2 {};

 rviz-assimp-vendor = self.callPackage ./rviz-assimp-vendor {};

 rviz-common = self.callPackage ./rviz-common {};

 rviz-default-plugins = self.callPackage ./rviz-default-plugins {};

 rviz-ogre-vendor = self.callPackage ./rviz-ogre-vendor {};

 rviz-rendering = self.callPackage ./rviz-rendering {};

 rviz-rendering-tests = self.callPackage ./rviz-rendering-tests {};

 rviz-visual-testing-framework = self.callPackage ./rviz-visual-testing-framework {};

 rviz-visual-tools = self.callPackage ./rviz-visual-tools {};

 sbg-driver = self.callPackage ./sbg-driver {};

 sdl2-vendor = self.callPackage ./sdl2-vendor {};

 self-test = self.callPackage ./self-test {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 sensor-msgs-py = self.callPackage ./sensor-msgs-py {};

 serial-driver = self.callPackage ./serial-driver {};

 shape-msgs = self.callPackage ./shape-msgs {};

 shared-queues-vendor = self.callPackage ./shared-queues-vendor {};

 sick-safetyscanners2 = self.callPackage ./sick-safetyscanners2 {};

 sick-safetyscanners2-interfaces = self.callPackage ./sick-safetyscanners2-interfaces {};

 sick-safetyscanners-base = self.callPackage ./sick-safetyscanners-base {};

 sick-scan2 = self.callPackage ./sick-scan2 {};

 simple-launch = self.callPackage ./simple-launch {};

 slam-toolbox = self.callPackage ./slam-toolbox {};

 slider-publisher = self.callPackage ./slider-publisher {};

 smac-planner = self.callPackage ./smac-planner {};

 smclib = self.callPackage ./smclib {};

 soccer-vision-msgs = self.callPackage ./soccer-vision-msgs {};

 sophus = self.callPackage ./sophus {};

 spacenav = self.callPackage ./spacenav {};

 spdlog-vendor = self.callPackage ./spdlog-vendor {};

 sqlite3-vendor = self.callPackage ./sqlite3-vendor {};

 srdfdom = self.callPackage ./srdfdom {};

 sros2 = self.callPackage ./sros2 {};

 sros2-cmake = self.callPackage ./sros2-cmake {};

 statistics-msgs = self.callPackage ./statistics-msgs {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 stubborn-buddies = self.callPackage ./stubborn-buddies {};

 stubborn-buddies-msgs = self.callPackage ./stubborn-buddies-msgs {};

 swri-console-util = self.callPackage ./swri-console-util {};

 swri-dbw-interface = self.callPackage ./swri-dbw-interface {};

 swri-geometry-util = self.callPackage ./swri-geometry-util {};

 swri-image-util = self.callPackage ./swri-image-util {};

 swri-math-util = self.callPackage ./swri-math-util {};

 swri-opencv-util = self.callPackage ./swri-opencv-util {};

 swri-prefix-tools = self.callPackage ./swri-prefix-tools {};

 swri-roscpp = self.callPackage ./swri-roscpp {};

 swri-route-util = self.callPackage ./swri-route-util {};

 swri-serial-util = self.callPackage ./swri-serial-util {};

 swri-system-util = self.callPackage ./swri-system-util {};

 swri-transform-util = self.callPackage ./swri-transform-util {};

 system-metrics-collector = self.callPackage ./system-metrics-collector {};

 system-modes = self.callPackage ./system-modes {};

 system-modes-examples = self.callPackage ./system-modes-examples {};

 system-modes-msgs = self.callPackage ./system-modes-msgs {};

 tango-icons-vendor = self.callPackage ./tango-icons-vendor {};

 teleop-tools = self.callPackage ./teleop-tools {};

 teleop-tools-msgs = self.callPackage ./teleop-tools-msgs {};

 teleop-twist-joy = self.callPackage ./teleop-twist-joy {};

 teleop-twist-keyboard = self.callPackage ./teleop-twist-keyboard {};

 test-apex-test-tools = self.callPackage ./test-apex-test-tools {};

 test-bond = self.callPackage ./test-bond {};

 test-interface-files = self.callPackage ./test-interface-files {};

 test-launch-system-modes = self.callPackage ./test-launch-system-modes {};

 test-msgs = self.callPackage ./test-msgs {};

 test-rmw-implementation = self.callPackage ./test-rmw-implementation {};

 tf2 = self.callPackage ./tf2 {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-eigen-kdl = self.callPackage ./tf2-eigen-kdl {};

 tf2-geometry-msgs = self.callPackage ./tf2-geometry-msgs {};

 tf2-kdl = self.callPackage ./tf2-kdl {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-sensor-msgs = self.callPackage ./tf2-sensor-msgs {};

 tf2-tools = self.callPackage ./tf2-tools {};

 tf-transformations = self.callPackage ./tf-transformations {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 tile-map = self.callPackage ./tile-map {};

 tinyxml2-vendor = self.callPackage ./tinyxml2-vendor {};

 tinyxml-vendor = self.callPackage ./tinyxml-vendor {};

 tlsf = self.callPackage ./tlsf {};

 tlsf-cpp = self.callPackage ./tlsf-cpp {};

 topic-monitor = self.callPackage ./topic-monitor {};

 tracetools = self.callPackage ./tracetools {};

 tracetools-launch = self.callPackage ./tracetools-launch {};

 tracetools-test = self.callPackage ./tracetools-test {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 transmission-interface = self.callPackage ./transmission-interface {};

 turtle-tf2-cpp = self.callPackage ./turtle-tf2-cpp {};

 turtle-tf2-py = self.callPackage ./turtle-tf2-py {};

 turtlebot3 = self.callPackage ./turtlebot3 {};

 turtlebot3-bringup = self.callPackage ./turtlebot3-bringup {};

 turtlebot3-cartographer = self.callPackage ./turtlebot3-cartographer {};

 turtlebot3-description = self.callPackage ./turtlebot3-description {};

 turtlebot3-example = self.callPackage ./turtlebot3-example {};

 turtlebot3-fake-node = self.callPackage ./turtlebot3-fake-node {};

 turtlebot3-gazebo = self.callPackage ./turtlebot3-gazebo {};

 turtlebot3-msgs = self.callPackage ./turtlebot3-msgs {};

 turtlebot3-navigation2 = self.callPackage ./turtlebot3-navigation2 {};

 turtlebot3-node = self.callPackage ./turtlebot3-node {};

 turtlebot3-simulations = self.callPackage ./turtlebot3-simulations {};

 turtlebot3-teleop = self.callPackage ./turtlebot3-teleop {};

 turtlesim = self.callPackage ./turtlesim {};

 tvm-vendor = self.callPackage ./tvm-vendor {};

 twist-mux = self.callPackage ./twist-mux {};

 twist-stamper = self.callPackage ./twist-stamper {};

 ublox = self.callPackage ./ublox {};

 ublox-gps = self.callPackage ./ublox-gps {};

 ublox-msgs = self.callPackage ./ublox-msgs {};

 ublox-serialization = self.callPackage ./ublox-serialization {};

 udp-driver = self.callPackage ./udp-driver {};

 udp-msgs = self.callPackage ./udp-msgs {};

 uncrustify-vendor = self.callPackage ./uncrustify-vendor {};

 unique-identifier-msgs = self.callPackage ./unique-identifier-msgs {};

 ur-client-library = self.callPackage ./ur-client-library {};

 urdf = self.callPackage ./urdf {};

 urdf-test = self.callPackage ./urdf-test {};

 urdfdom = self.callPackage ./urdfdom {};

 urdfdom-headers = self.callPackage ./urdfdom-headers {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-c = self.callPackage ./urg-c {};

 urg-node = self.callPackage ./urg-node {};

 urg-node-msgs = self.callPackage ./urg-node-msgs {};

 usb-cam = self.callPackage ./usb-cam {};

 v4l2-camera = self.callPackage ./v4l2-camera {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 velodyne = self.callPackage ./velodyne {};

 velodyne-description = self.callPackage ./velodyne-description {};

 velodyne-driver = self.callPackage ./velodyne-driver {};

 velodyne-gazebo-plugins = self.callPackage ./velodyne-gazebo-plugins {};

 velodyne-laserscan = self.callPackage ./velodyne-laserscan {};

 velodyne-msgs = self.callPackage ./velodyne-msgs {};

 velodyne-pointcloud = self.callPackage ./velodyne-pointcloud {};

 velodyne-simulator = self.callPackage ./velodyne-simulator {};

 vision-msgs = self.callPackage ./vision-msgs {};

 vision-opencv = self.callPackage ./vision-opencv {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 vrxperience-bridge = self.callPackage ./vrxperience-bridge {};

 vrxperience-msgs = self.callPackage ./vrxperience-msgs {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 warehouse-ros-sqlite = self.callPackage ./warehouse-ros-sqlite {};

 webots-ros2 = self.callPackage ./webots-ros2 {};

 webots-ros2-abb = self.callPackage ./webots-ros2-abb {};

 webots-ros2-control = self.callPackage ./webots-ros2-control {};

 webots-ros2-core = self.callPackage ./webots-ros2-core {};

 webots-ros2-demos = self.callPackage ./webots-ros2-demos {};

 webots-ros2-driver = self.callPackage ./webots-ros2-driver {};

 webots-ros2-epuck = self.callPackage ./webots-ros2-epuck {};

 webots-ros2-examples = self.callPackage ./webots-ros2-examples {};

 webots-ros2-importer = self.callPackage ./webots-ros2-importer {};

 webots-ros2-mavic = self.callPackage ./webots-ros2-mavic {};

 webots-ros2-msgs = self.callPackage ./webots-ros2-msgs {};

 webots-ros2-tesla = self.callPackage ./webots-ros2-tesla {};

 webots-ros2-tests = self.callPackage ./webots-ros2-tests {};

 webots-ros2-tiago = self.callPackage ./webots-ros2-tiago {};

 webots-ros2-turtlebot = self.callPackage ./webots-ros2-turtlebot {};

 webots-ros2-tutorials = self.callPackage ./webots-ros2-tutorials {};

 webots-ros2-universal-robot = self.callPackage ./webots-ros2-universal-robot {};

 webots-ros2-ur-e-description = self.callPackage ./webots-ros2-ur-e-description {};

 wiimote = self.callPackage ./wiimote {};

 wiimote-msgs = self.callPackage ./wiimote-msgs {};

 xacro = self.callPackage ./xacro {};

 xacro-live = self.callPackage ./xacro-live {};

 yaml-cpp-vendor = self.callPackage ./yaml-cpp-vendor {};

 zstd-vendor = self.callPackage ./zstd-vendor {};

}
